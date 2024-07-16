<?php

namespace App\Form;

use App\Entity\Intervention;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;


class InterventionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('Adresse')
        ->add('Type')
        ->add('Precisions')
        ->add('Statut', ChoiceType::class, [
            'choices' => [
                'À planifier' => 'À planifier',
                'En cours' => 'En cours',
                'Réalisé'=> 'Réalisé',
            ],
        ])
               ->add('Date', null, [
            'widget' => 'single_text',
        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Intervention::class,
        ]);
    }
}
