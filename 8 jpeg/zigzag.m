function zigzag_vector = zigzag(mat)
    zigzag_vector = zeros(1, 64);
    
    % Initialize indexes for traversal
    row = 1;
    col = 1;
    idx = 1;
    
    % Flag for direction of traversal (up or down)
    going_up = true;
    
    % Zigzag traversal
    while idx <= 64
        zigzag_vector(idx) = mat(row, col);
        if going_up
            if col == 8
                row = row + 1;
                going_up = false;
            elseif row == 1
                col = col + 1;
                going_up = false;
            else
                row = row - 1;
                col = col + 1;
            end
        else
            if row == 8
                col = col + 1;
                going_up = true;
            elseif col == 1
                row = row + 1;
                going_up = true;
            else
                row = row + 1;
                col = col - 1;
            end
        end
        idx = idx + 1;
    end
end