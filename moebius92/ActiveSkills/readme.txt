The moebius92.ActiveSkills library provides a simplified interface to the
trained or active skills.  This file is the documentation for the library.
It is broken up into three sections.  The first section (I - Introduction)
contains a description of why someone might want to use the library and two
examples of how to use it.  The second section (II - Interface) contains a
description of the library's functions and classes.  The third section
(III - Cleaning Up) contains a warning about a potential problem that can
occur when an object of the library is no longer needed and presents two
possible solutions.

I - Introduction
	The basic idea of this library is that a plugin author should be able to
simply select a skill to work with, and then be able to immediately start
querying the state of the skill and setting up event handlers.  Furthermore,
we would like the author's interactions with the skill to be isolated from
any other interactions with the skill.  That is, anything the author does
to the skill should not be dependent on someone else having done or not done
something to the skill.

	For example, let's say we want to watch for changes in the reset time of
the LM skill "Warding Knowledge" (shortcut "0x7000B625").  We would use the
following code:

		import "moebius92.ActiveSkills";

		-- Create an ActiveSkill object for the skill we're interested in
		askill = moebius92.ActiveSkills.ActiveSkill("0x7000B625");
		
		-- Set up an event handler for when the reset time changes
		askill.ResetTimeChanged = function(self, reset)
			Turbine.Shell.WriteLine("Reset time is now: " .. reset);
		end;

We first get an object for the skill by simply indicating the shortcut data
of the skill we are interested in.  We then use that object to set up an
event handler that is called any time the skill's reset time is changed.  Since
the event handler is attached to an object we just created, we do not have to
worry about overwriting someone else's event handler or vice versa.  We can
simply set the event handler on the object without worry.

(In contrast, using the Turbine.Gameplay, we would have to search through the
skills in Turbine.Gameplay.TrainedSkills to get the Turbine.Gameplay.ActiveSkill
object for the "Warding Knowledge" skill.  Furthermore, that object could be
invalidated by the skill becoming untrained and then retrained (due to a trait
spec swap), so we would need to set up event handlers to watch for that
occurrence, and to capture the new ActiveSkill object generated when the skill
became trained again.  Due to that, we would also need to ensure that the
ResetTimeChanged event handler was properly set up each time a new ActiveSkill
object was generated.  Finally, since the ActiveSkill object will be shared
by all plugins, we would need to ensure that we do not overwrite anyone else's
event handler and no one overwrites ours.)

	As another example, let's say we want to determine which trait line a
Captain is in and when that changes.  We can do this by checking whether the
skills "Valiant Strike" ("0x7002F312"), "Shadow's Lament" ("0x7000FF8B"), or
"Threatening Shout" ("0x70002FD5") are trained.  We would use the following code:

		import "moebius92.ActiveSkills";

		tskills = moebius92.ActiveSkills.TrainedSkills();

		-- Set the skills we want to watch
		tskills:SetShortcuts({ "0x7002F312", "0x7000FF8B", "0x70002FD5" });

		-- Called whenever any of the skills we're
		-- watching becomes trained or untrained
		tskills.SkillsChanged(self, state)
			if state["0x7002F312"] then
				Turbine.Shell.WriteLine("Blue");
			elseif state["0x7000FF8B"] then
				Turbine.Shell.WriteLine("Red");
			elseif state["0x7000FF8B"] then
				Turbine.Shell.WriteLine("Yellow");
			else
				Turbine.Shell.WriteLine("None");
			end
		end;

The moebius92.ActiveSkills.TrainedSkills class allows us to watch for changes
in the set of trained skills.  We can use it to specify a specific set of
skills that we are interested in, and then set up an event handler that fires
when the trained/untrained state of one or more of those skills changes.


II - Interface
	The library consists of one function: GetTrainedSkills (returns the
currently trained skills) and two classes: TrainedSkills (watch for changes
in the set of trained skills) and ActiveSkill (query the state of a skill and
watch for changes in its state).

	For the Function, I will simply describe the function.  For each Class, I
will provide a description of the class, and then further describe its Member
functions and Event handlers.

	Make sure you import the moebius92.ActiveSkills library before doing
anything else.

		import "moebius92.ActiveSkills";

	Once the interface has been imported, no further initialization is needed.
The function can be called, and objects can be instantiated.

	Function - moebius92.ActiveSkills.GetTrainedSkills()
	This function returns a table of all of the currently trained skills.  The
	keys are the shortcuts of the skills and the values are the
	Turbine.Gameplay.ActiveSkill objects of the skills.

		-- Print out a list of the trained skills
		for shortcut, askill in pairs(moebius92.ActiveSkill.GetTrainedSkills()) do
			Turbine.Shell.WriteLine(shortcut .. ": " .. askill:GetSkillInfo():GetName());
		end

	Be aware that the Turbine.Gameplay.ActiveSkill objects may become invalid
	if the skill become untrained.
		
	Class - moebius92.ActiveSkills.TrainedSkills()
	This class is used to watch for changes in the trained/untrained state of
	skills.  When initially generated, the object will not be watching any
	skills - your next step should be to use the SetShortcuts member function
	to specify the set of skills you want to watch.

		-- Create a TrainedSkills object
		tskills = moebius92.ActiveSkills.TrainedSkills();

	In order to free up a moebius92.ActiveSkills.TrainedSkills object, simply
	delete all references to the object, and garbage collection will handle the
	rest.  You may need to watch for event handlers, as the freed object will
	continus to exist until garbage collection occurs.  (See section III).

		Member - TrainedSkills:SetShortcuts(shortcuts)
		This function is used to specify the set of skills the TrainedSkills
		object should be watching.  The argument "shortcuts" should either be
		an array of the shortcuts of the skills you want to watch, or nil, if
		you want to watch all skills.

			-- Watch which CC skills an LM has available
			tskills:SetShortcuts({ "0x7000B60D", "0x70003152", "0x70003143",
								   "0x70003EC0", "0x70000FA7", "0x70003EC2",
								   "0x7000B63C", "0x70003EB9" });

		Member - TrainedSkills:GetShortcuts()
		Returns the current trained/untrained state of the skills being
		watched.  This will be a table where the keys are the shortcuts of the
		skills, and the values are true (if the skill is trained) or false
		(if the skill is not trained).  If all of the skills are being watched,
		this table will only contain the skills that are currently trained.

			-- Print out the shortcuts of the currently trained CC skills
			for shortcut, active in pairs(tskills:GetShortcuts()) do
				if active then
					Turbine.Shell.WriteLine(shortcut .. " is active.");
				end
			end

		Event - TrainedSkills:SkillChanged(state)
		This event is called whenever the trained/untrained state of any of the
		skills being watched changes.  This event treats skills being trained
		and untrained in batches - for example, if a skill is untrained and
		then trained again as a result of a single action (such as a trait spec
		swap), then no event will be generated.  The "state" argument is a
		table of shortcuts with their trained/untrained state - the same table
		returned by TrainedSkills:GetShortcuts.  As with
		TrainedSkills:GetShortcuts, if all skills are being watched, the
		"state" will contain all of the skills that are currently trained.

			-- Print out what types of CC we have available
			function tskills:SkillsChanged(state)
				if state["0x7000B60D"] or state["0x70003152"] then
					Turbine.Shell.WriteLine("Daze");
				end

				if state["0x70003143"] or state["0x70003EC0"] then
					Turbine.Shell.WriteLine("Root");
				end

				if state["0x70000FA7"] or state["0x70003EC2"] or
				   state["0x7000B63C"] or state["0x70003EB9"] then
					Turbine.Shell.WriteLine("Stun");
				end
			end

		Event - TrainedSkills:SkillAdded(shortcut)
		This event is called whenever a skill being watched becomes trained.
		The argument is the shortcut of the skill.  Unlike
		TrainedSkills:SkillsChanged, this event does not treat skills being
		trained and untrained in batches.  So, if a skill is untrained and
		then trained again, a TrainedSkills:SkillAdded event will always be
		generated, even if the untraining and retraining are the result of a
		single action.

			-- Print out skills whenever they become trained
			function tskills:SkillAdded(shortcut)
				Turbine.Shell.WriteLine("+" .. shortcut);
			end

		Event - TrainedSkills:SkillRemoved(shortcut)
		This event is called whenever a skill being watched becomes untrained.
		As with TrainedSkills:SkillAdded, this event will be called whenever a
		skill becomes untrained, even if it is later retrained as part of the
		same action.

			-- Print out skills whenever they become untrained
			function tskills:SkillAdded(shortcut)
				Turbine.Shell.WriteLine("-" .. shortcut);
			end
		
	Class - moebius92.ActiveSkills.ActiveSkill(shortcut)
	This class instantiates into an object that can be used to query the state
	of the specified skill, as well as set up event handlers for the skill.
	"shortcut" is the shortcut of the skill the object is linked to.  It can
	only be set when the object is instantiated, and may not be changed.

		-- Create an ActiveSkill object for the skill "Spur On"
		askill = moebius92.ActiveSkills.ActiveSkill("0x700303C2");

	In order to free up a moebius92.ActiveSkills.ActiveSkill object, simply
	delete all references to the object, and garbage collection will handle the
	rest.  You may need to watch for event handlers, as the freed object will
	continus to exist until garbage collection occurs.  (See section III).

	Since the object instantiated is unique, you will not have to worry about
	sharing event handlers with other scripts - you have control over any
	moebius92.ActiveSkills.ActiveSkill objects you create, and thus control
	over what event handlers get set for those objects.

		Member - ActiveSkill:GetShortcut()
		Returns the shortcut of the skill the object is linked to.  This can
		be useful if you have a generic event handler - "self" will be the
		ActiveSkill object, and you can query "self:GetShortcut()" to determine
		which skill you are dealing with.

			-- Check if this object if the ActiveSkill for "Spur On"
			if askill:GetShortcut == "0x700303C2" then
				Turbine.Shell.WriteLine("ActiveSkill for Spur On");
			end

		Member - ActiveSkill:IsActive()
		Returns true if the skill is trained, and false otherwise.

			-- Check if "Spur On" is trained
			if askill:IsActive() then
				Turbine.Shell.WriteLine("You know Spur On");
			end

		Event - ActiveSkill:ActiveChanged(active)
		This event occurs whenever the trained/untrained state of the skill
		changes.

			-- If the skill becomes untrained, free the ActiveSkill object
			function askill:ActiveChanged(active)
				if not active then
					-- Clean up the event handler, and then the object
					self.ActiveChanged = nil;
					askill = nil;
				end
			end

		Member - ActiveSkill:GetSkillInfo()
		If the skill is trained, this member function returns a
		Turbine.Gameplay.SkillInfo object for the skill, and nil otherwise.

			-- Print out the name of this skill
			-- (We should really be checking for a nil return)
			Turbine.Shell.WriteLine(askill:GetSkillInfo():GetName());

		Member - ActiveSkill:GetBaseCooldown()
		If the skill is trained, this member function returns the base cooldown
		of the skill.  Otherwise, it returns nil.

			-- Print out the base cooldown of the skill
			-- (again, we should really be checking for a nil return)
			Turbine.Shell.WriteLine(askill:GetBaseCooldown());

		Member - ActiveSkill:GetCooldown()
		If the skill is trained, this member function returns the current
		cooldown of the skill.  (That is, the amount of time that the skill
		will go on cooldown for when it is used.) Otherwise, it returns nil.

			-- Calculate the time that the skill would be reset,
			-- if it went on cooldown now.
			rtime = Turbine.Engine.GetGameTime() + (askill:GetCooldown() or 0);

		Event - ActiveSkill:CooldownChanged(cooldown)
		This event is called any time the current cooldown (the amount of time
		that the skill will go on cooldown for when it is used - this event
		does not fire when the skill itself goes on cooldown) changes.  Note:
		this event is not natively supported and is generated via polling.
		This should not be a large load, but try to keep the number of
		skills that have CooldownChanged event handlers to a minimum.

			-- Print out the new cooldown time of "Spur On"
			function askill:CooldownChanged(cooldown)
				Turbine.Shell.WriteLine("Spur On's cooldown is now " .. tostring(cooldown));
			end

		Member - ActiveSkill:GetResetTime()
		If the skill is trained, return the time when the skill will be
		finished cooling down.  Otherwise, return nil.

			-- Print out the remaining cooldown time for the skill
			ctime = (askill:GetResetTime() or 0) - Turbine.Engine.GetGameTime();
			if ctime > 0 then
				Turbine.Shell.WriteLine(tostring(ctime) .. " seconds remaining.");
			end

		Event - ActiveSkill:ResetTimeChanged(reset)
		This event is called any time the reset time of the skill changes.
		This may be due to the skill going on cooldown, or due to the remaining
		cooldown being shortened (for example, the Captain's "Improved Sure
		Strike" decreases the remaining cooldown of "Battle-shout").

			-- See if a skill has gone on cooldown
			function askill:ResetTimeChanged(reset)
				local ctime = reset - Turbine.Engine.GetGameTime();

				-- See if the remaining cooldown time is within 1 second
				-- of the current cooldown time - if so, we probably
				-- just went on cooldown.
				if math.abs(ctime - askill:GetCooldown()) < 1.0 then
					Turbine.Shell.WriteLine("Spur On used!");
				end
			end

		Member - ActiveSkill:IsUsable()
		If the skill is trained, return whether the skill is currently usable
		or not.  Otherwise, return nil.

			-- Check if we can use Spur On (and thus other warhorse skills)
			if askill:IsUsable() then
				Turbine.Shell.WriteLine("Warhorse skills are usable.");
			end

		Event - ActiveSkill:UsableChanged(usable)
		This event is called any time whether or not a skill is usable changes.
		Again, this event is not natively supported, and is generated by
		polling - the overall load from polling should be minimal, but it is
		advised that you try to minimize the number of skills with
		UsableChanged event handlers.

			-- Print something out when we enter/leave a region where we can use
			-- warhorse skills (if we are mounted on a warhose).
			function askill:UsableChanged(usable)
				if usable then
					Turbine.Shell.WriteLine("You can now use warhorse skills.");
				else
					Turbine.Shell.WriteLine("Warhorse skills are no longer available.");
				end
			end

		
III - Cleaning Up
	Objects of both of the classes can be freed by simply deleting all
references to the object.  However, the object itself will not be released
until garbage collection is performed - as such, any event handlers attached
to the object will still be called if the event happens.  In some cases, this
may not be a problem - objects (such as UI elements) that the event handlers
manipulates may also have been freed, and as such any changes to them will have
no effect.  However, in the case where the event handler of a dead ActiveSkills
object may manipulate objects that are still alive, there are two possible
solutions.

	First, we can simply force a garbage collection cycle.  If we have a
moebius92.ActiveSkills.ActiveSkill object whose last reference is the
variable "askill", we can do the following:

		-- Free up the object
		askill = nil;

		-- Force a garbage collection cycle
		collectgarbage("collect");

	Second, we can simply delete the event handler.  Again, if we assume
the last reference to an moebius92.ActiveSkills.ActiveSkill object is the
variable "askill", and that object only has a ResetTimeChanged event
handler, we can do the following:

		-- Remove the event handler
		askill.ResetTimeChanged = nil;

		-- Free up the object
		askill = nil;

	Either way should work - but it is important to ensure that event handlers
are properly cleaned up - either by manually removing them, or by ensuring
that the object is garbage collected before the event handler has a chance to
be called.