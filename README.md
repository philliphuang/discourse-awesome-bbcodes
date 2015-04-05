discourse-awesome-bbcodes
======================

A Discourse Plugin to support BBCode tags spawning accross multiple lines.
By default, support is provided for the following tags:

 - hide, nsfw
 - color
 - typefaces (humanism/corporate/smartass/alpha/rainbow)
 - spoiler

Usage
=====

Spoiler
====

In your posts, surround text or images with `[spoiler]` ... `[/spoiler]`.
For example:

```
   I watched the murder mystery on TV last night. [spoiler]The butler did it[/spoiler].
```


Hide/NSFW
====

In your posts, surround text with `[hide=...]` and `[/hide]` or with `[nsfw]` and `[/nsfw]`

```
The author explains this in great detail in section 7.
[hide=TL DR]
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a turpis vel mi vulputate elementum in a urna. Quisque eget odio nec urna egestas luctus id sed eros. Phasellus rhoncus sagittis nibh vitae convallis. Cras nec suscipit ex, ut ullamcorper quam. Quisque maximus rutrum tellus non tempus. Vivamus non semper urna, at tristique dui. Mauris bibendum nulla eget metus tristique, nec fringilla leo ultrices. Fusce fringilla purus a luctus tincidunt. Donec mattis risus ac elit molestie lobortis. Quisque convallis risus velit, ac hendrerit quam sagittis et. Nullam et ex vel lacus volutpat iaculis.
[/hide]
```

```
[nsfw]
Great a**
http://www.example.com/sexypic.jpg
[/nsfw]
```

Color
====

In your posts, surround text with `[color=...]` and `[/color]`. Color values are those supported by HTML, like `red` and `#ff000`. For example:

```
Look at my [color=red]red words[/color] and be amazed! Also, [color=#33ff33]green is cool[/color] too.
```

Typefaces
====

In your posts, surround text with `[humanism]` and `[/humanism]`.

```
[humanism]I hold in high regard humanity in general.[/humanism]
```

You can also replace `humanism` with `smartass`, `corporate`, `rainbow`, `alpha` for a different effect.

Installation
============

* Add the plugin's repo url to your container's yml config file

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/rux-pizza/discourse-awesome-bbcodes.git
```

* Rebuild the container

```
cd /var/docker
git pull
./launcher rebuild app
```

License
=======

MIT
