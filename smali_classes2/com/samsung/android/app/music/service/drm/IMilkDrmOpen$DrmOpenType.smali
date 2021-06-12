.class public final enum Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrmOpenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

.field public static final enum FILE:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

.field public static final enum SESSION:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    const-string v1, "SESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->SESSION:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    new-instance v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    const-string v1, "FILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->FILE:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    sget-object v1, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->SESSION:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->FILE:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->$VALUES:[Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;
    .locals 1

    .line 10
    const-class v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;
    .locals 1

    .line 10
    sget-object v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->$VALUES:[Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    return-object v0
.end method
