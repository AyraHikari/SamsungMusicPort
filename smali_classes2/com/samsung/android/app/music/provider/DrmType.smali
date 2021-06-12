.class public final Lcom/samsung/android/app/music/provider/DrmType;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const-string p0, "DRM"

    return-object p0
.end method
