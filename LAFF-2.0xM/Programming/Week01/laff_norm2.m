function [norm2_out] = laff_norm2(x)
    [ m_x, n_x ] = size( x );
    
    if ~isvector( x )
        disp( 'axpy failed' );
        norm2_out = 'FAILED';
        return
    end
        
    norm2_out = 0.0;

    if m_x > n_x 
        for i = 1 : m_x
            norm2_out = norm2_out + x(i, 1)*x(i, 1);
        end
    else 
        for i = 1 : n_x
            norm2_out = norm2_out + x(1, i)*x(1,i);
        end
    end

    norm2_out = sqrt(norm2_out);
end