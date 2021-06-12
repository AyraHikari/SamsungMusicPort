.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INotificationUpdaterDelegate"
.end annotation


# virtual methods
.method public abstract buildNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;
.end method

.method public abstract getBlurBackground(Landroid/content/Context;FJJLkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "FJJ",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerNotification(ILandroid/app/Notification;)V
.end method

.method public abstract unregisterNotification(Z)V
.end method
