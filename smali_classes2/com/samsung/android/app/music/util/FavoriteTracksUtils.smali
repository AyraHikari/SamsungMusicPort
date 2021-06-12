.class public final Lcom/samsung/android/app/music/util/FavoriteTracksUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/util/FavoriteTracksUtils;->a:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 26
    sput-wide v0, Lcom/samsung/android/app/music/util/FavoriteTracksUtils;->b:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "FavoriteList#328795!432@1341"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
