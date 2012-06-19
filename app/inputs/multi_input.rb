class MultiInput < SimpleForm::Inputs::Base
  def input
    # fields: { zip: {}, city: {} }
    fields = options[:fields]
    fields.map do |name, opts|
      lbl = opts.delete :label
      lbl = case lbl
      when String then lbl
      when true then @builder.object.class.human_attribute_name(name)
      when Symbol then @builder.object.class.human_attribute_name(lbl)
      else nil
      end
      e = @builder.object.errors[name].presence.try(:join, ", ")
      opts = opts.merge('data-validation-error' => e) if e
      f = @builder.input_field name, opts
      lbl.present? ? "#{lbl} #{f}" : f
    end.join(options[:joiner] || " ").html_safe
  end
end
