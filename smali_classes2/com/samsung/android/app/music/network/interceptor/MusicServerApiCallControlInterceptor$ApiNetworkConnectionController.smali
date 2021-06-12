.class public interface abstract Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiNetworkConnectionController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;Lokhttp3/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation
.end method
