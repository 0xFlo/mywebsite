# lib/myapp_web/components/nav.ex
defmodule MyappWeb.Components.Nav do
  use Phoenix.Component

  attr :class, :string, default: nil
  def main_header(assigns) do
    ~H"""
    <header class={["bg-white", @class]}>
      <nav class="mx-auto flex max-w-7xl items-center justify-between p-6 lg:px-8" aria-label="Global">
        <div class="flex lg:flex-1">
          <a href="/" class="-m-1.5 p-1.5 text-2xl font-semibold">
            [Your Name]
          </a>
        </div>
        <div class="hidden md:flex gap-x-12">
          <a href="/about" class="text-sm font-semibold leading-6 text-gray-600 hover:text-gray-900">About</a>
          <a href="/services" class="text-sm font-semibold leading-6 text-gray-600 hover:text-gray-900">Services</a>
          <a href="#contact" class="text-sm font-semibold leading-6 text-gray-900">Contact</a>
        </div>
      </nav>
    </header>
    """
  end
end