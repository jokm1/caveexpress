#pragma once

#include "Texture.h"
#include "common/NonCopyable.h"
#include "common/String.h"
#include <map>

// forward decl
class ServiceProvider;

class TextureCache: public NonCopyable {
private:
	IFrontend *_frontend;
	ServiceProvider *_serviceProvider;

	typedef std::map<std::string, TexturePtr> TextureDefinitionMap;
	TextureDefinitionMap _textureDefs;

	typedef std::map<std::string, TexturePtr> TextureMap;
	TextureMap _textures;

	inline void create (const std::string& textureName, const std::string& id, const TextureDefinitionCoords& texcoords,
			const TextureDefinitionTrim& trim, bool mirror);

public:
	TextureCache ();
	virtual ~TextureCache ();

	TexturePtr load (const std::string& textureName);

	void init (IFrontend *frontend, ServiceProvider& serviceProvider);
	void shutdown ();
	void dump() const;
};
