.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayerChangedCallback"
.end annotation


# virtual methods
.method public abstract onPlayerChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation
.end method
