function rotor = quadrotor_set_rotor(main_node_index, second_node_index, RelativeOrientation)

    function f = rotor_fnc(nodes_position, norm_f)
        main_node   = nodes_position(:, main_node_index);
        second_node = nodes_position(:, second_node_index);
        n = main_node - second_node;
        
        f = RelativeOrientation*n*norm_f;
    end

    rotor.rotor_handle = @rotor_fnc;
    rotor.application_node_index = main_node_index;
end
