.class public interface abstract Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$CommonStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterimStateListener"
.end annotation


# virtual methods
.method public abstract onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
.end method

.method public abstract onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
.end method
