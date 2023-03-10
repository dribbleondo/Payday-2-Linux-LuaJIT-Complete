ScriptUnitData = ScriptUnitData or class()

function ScriptUnitData:init(unit)
	unit:set_extension_update_enabled(Idstring("unit_data"), false)
end

UnitBase = UnitBase or class()

function UnitBase:init(unit, update_enabled)
	self._unit = unit

	if not update_enabled then
		unit:set_extension_update_enabled(Idstring("base"), false)
	end
end

function UnitBase:destroy(unit)
end

function UnitBase:pre_destroy(unit)
	self._destroying = true
end
