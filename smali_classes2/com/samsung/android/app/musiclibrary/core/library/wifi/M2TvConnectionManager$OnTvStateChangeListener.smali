.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTvStateChangeListener"
.end annotation


# virtual methods
.method public abstract onDeviceAvailable(Z)V
.end method

.method public abstract onTvListDialogShow(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTvTurnOnDialogDismiss()V
.end method

.method public abstract onTvTurnOnDialogShow()V
.end method
