.class public Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SETTING_SIDESYNC_CONNECTED:Ljava/lang/String; = "sidesync_source_connect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSideSyncConnected(Landroid/content/Context;)Z
    .locals 2

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sidesync_source_connect"

    const/4 v1, 0x0

    .line 19
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
