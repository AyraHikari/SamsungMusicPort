.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;
    }
.end annotation


# static fields
.field public static final SERVER:Ljava/lang/String; = "SERVER"


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract notifyError(Ljava/lang/String;I)V
.end method

.method public abstract setCustomErrorListener(Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;)V
.end method
