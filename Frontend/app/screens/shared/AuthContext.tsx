import React, { createContext, useContext, useState, ReactNode } from 'react';

// Define the shape of the authentication context state.
interface AuthContextType {
    isAuthenticated: boolean;
    setIsAuthenticated: (status: boolean) => void;
}

// Create the context with an initial undefined type, later to be populated via AuthProvider.
const AuthContext = createContext<AuthContextType | undefined>(undefined);

// Hook to use the auth context.
export const useAuth = () => {
    const context = useContext(AuthContext);
    if (context === undefined) {
        throw new Error('useAuth must be used within an AuthProvider.');
    }
    return context;
};

// Props for AuthProvider component.
interface AuthProviderProps {
    children: ReactNode;
}

// AuthProvider component definition.
export const AuthProvider = ({ children }: AuthProviderProps) => {
    const [isAuthenticated, setIsAuthenticated] = useState(false);
    const value = { isAuthenticated, setIsAuthenticated };

    return (
        <AuthContext.Provider value={value}>
            {children}
        </AuthContext.Provider>
    );
};
