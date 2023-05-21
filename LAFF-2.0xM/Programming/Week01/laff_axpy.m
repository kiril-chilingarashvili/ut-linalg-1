function [z_out] = laff_axpy(alpha, x, y)
    [ m_x, n_x ] = size( x );
    
    if ~isvector( x )
        disp( 'axpy failed' );
        z_out = 'FAILED';
        return
    end
    [ m_y, n_y ] = size( y );
    
    if ~isvector( y )
        disp( 'axpy failed' );
        z_out = 'FAILED';
        return
    end
    
    if ~isscalar(alpha)
        disp( 'axpy failed' );
        z_out = 'FAILED';
        return
    end
    
    if m_x ~= m_y | n_x ~= n_y
        disp( 'axpy failed' );
        z_out = 'FAILED';
        return
    end
        
    z_out = zeros(m_x, n_x)

    if m_x > n_x 
        for i = 1 : m_x
            z_out(i, 1) = x(i, 1)*alpha+y(i, 1)
        end
    else 
        for i = 1 : n_x
            z_out(1, i) = x(1, i)*alpha+y(1,i)
        end
    end
end

