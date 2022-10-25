module ApplicationHelper
  # All the previous code

  def form_error_notification(object)
    if object.errors.any?
      tag.div class: 'alert alert-outline-danger alert-dismissible show flex items-center mb-2' do
        tag.i(class: 'w-6 h-6 mr-2', data: { lucide: 'alert-octagon' }) +
          object.errors.full_messages.to_sentence.capitalize
      end
    end
  end
end
