<?php


namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity(repositoryClass="App\Repository\RegionRepository")
 * @ORM\Table(name="region")
 */
class Region
{
    use IdentifiableTrait;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    protected $name;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    protected $shortcut;

    /**
     * @var boolean
     *
     * @ORM\Column(type="boolean")
     */
    protected $use;

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param string $name
     * @return Region
     */
    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return string
     */
    public function getShortcut(): string
    {
        return $this->shortcut;
    }

    /**
     * @param string $shortcut
     * @return Region
     */
    public function setShortcut(string $shortcut): self
    {
        $this->shortcut = $shortcut;

        return $this;
    }

    /**
     * @return bool
     */
    public function isUse(): bool
    {
        return $this->use;
    }

    /**
     * @param bool $use
     * @return Region
     */
    public function setUse(bool $use): self
    {
        $this->use = $use;

        return $this;
    }
}