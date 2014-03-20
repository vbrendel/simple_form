class EnumInput < SimpleForm::Inputs::CollectionSelectInput
  def collection
    object.class.send(reflection_or_attribute_name.to_s.pluralize).map{ |name, id| [I18n.translate(name, scope: [:simple_form, :collections, object_name, attribute_name], default: name), name] }
  end
end
