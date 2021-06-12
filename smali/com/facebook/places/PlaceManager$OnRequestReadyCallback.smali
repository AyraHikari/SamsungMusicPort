.class public interface abstract Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/PlaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestReadyCallback"
.end annotation


# virtual methods
.method public abstract onLocationError(Lcom/facebook/places/PlaceManager$LocationError;)V
.end method

.method public abstract onRequestReady(Lcom/facebook/GraphRequest;)V
.end method
