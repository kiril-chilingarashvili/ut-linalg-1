function [ x_out ] = laff_scal(alpha, x)

    [ m_x, n_x ] = size( x );
    
    if ~isvector( x )
        disp( 'scale failed' );
        x_out = 'FAILED';
        return
    end
    
    if ~isscalar(alpha)
        disp( 'scale failed' );
        x_out = 'FAILED';
        return
    end

    x_out = zeros(m_x, n_x );

    for i = 1 : m_x   
        for j = 1 : n_x
            x_out ( i,j ) = x( i,j )*alpha;
        end
    end

end