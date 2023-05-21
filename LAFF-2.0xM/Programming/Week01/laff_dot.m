function [dot_out] = laff_dot(x, y)
    [ m_x, n_x ] = size( x );
    
    if ~isvector( x )
        disp( 'axpy failed' );
        dot_out = 'FAILED';
        return
    end
    [ m_y, n_y ] = size( y );
    
    if ~isvector( y )
        disp( 'axpy failed' );
        dot_out = 'FAILED';
        return
    end
    
    if m_x ~= m_y | n_x ~= n_y
        disp( 'axpy failed' );
        dot_out = 'FAILED';
        return
    end
        
    dot_out = 0.0

    if m_x > n_x 
        for i = 1 : m_x
            dot_out = dot_out + x(i, 1)*y(i, 1)
        end
    else 
        for i = 1 : n_x
            dot_out = dot_out + x(1, i)*y(1,i)
        end
    end
end