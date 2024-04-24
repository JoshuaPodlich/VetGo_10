import React, { createContext, useContext, useState, useMemo, ReactNode } from 'react';
import { LocationInterface } from './Interfaces'

interface User {
    userId: string;
    userIsVet: boolean;
    location: LocationInterface;
}

interface UserContextType {
    user: User | null;
    setUser: (user: User | null) => void;
}

// Create the context with an initial undefined type, later to be populated via UserProvider.
const UserContext = createContext<UserContextType | undefined>(undefined);

// Hook to use the user context.
export const useUser = (): UserContextType => {
    const context = useContext(UserContext);
    if (context === undefined) {
        throw new Error('useUser must be used within a UserProvider');
    }
    return context;
};

// Props for UserProvider component.
interface UserProviderProps {
    children: ReactNode;
}

// UserProvider component definition.
export const UserProvider: React.FC<UserProviderProps> = ({ children }) => {
    const [user, setUser] = useState<User | null>(null);

    // Memoize the context value to optimize performance.
    const value = useMemo(() => ({ user, setUser }), [user]);

    return <UserContext.Provider value={value}>
        {children}
    </UserContext.Provider>;
};