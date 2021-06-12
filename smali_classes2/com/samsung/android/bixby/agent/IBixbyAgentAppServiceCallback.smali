.class public interface abstract Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
