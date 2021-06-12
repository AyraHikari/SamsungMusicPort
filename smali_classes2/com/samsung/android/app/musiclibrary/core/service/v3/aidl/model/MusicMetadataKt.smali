.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadataKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isNonEmpty(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
