import React, { createContext, useState, useContext, ReactNode } from 'react';

interface NotificationState {
    header: string;
    message: string;
    type: string;
}

interface NotificationContextType {
    notification: NotificationState;
    setNotification: (notification: NotificationState) => void;
}

const defaultState: NotificationContextType = {
    notification: { header: '', message: '', type: '' },
    setNotification: () => {}
};

const NotificationContext = createContext<NotificationContextType>(defaultState);

export const useNotification = () => useContext(NotificationContext);

interface Props {
    children: ReactNode;
}

export const NotificationProvider: React.FC<Props> = ({ children }) => {
    const [notification, setNotification] = useState<NotificationState>({ header:'', message: '', type: '' });

    return (
        <NotificationContext.Provider value={{ notification, setNotification }}>
            {children}
        </NotificationContext.Provider>
    );
};
