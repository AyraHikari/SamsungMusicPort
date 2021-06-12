.class public Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$SystemTimeGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemTimeGetter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
