# frozen_string_literal: true

# Base class for application config classes
class ApplicationConfig < Anyway::Config
  class << self
    # Make it possible to access a singleton config instance
    # via class methods (i.e., without explicitly calling `instance`)
    delegate_missing_to :instance

    attr_config :github_token, :github_username, :infra_repo_url, :kubeconfig, :kubecontext
    required :github_token, :github_username, :infra_repo_url

    private

    # Returns a singleton config instance
    def instance
      @instance ||= new
    end
  end
end
