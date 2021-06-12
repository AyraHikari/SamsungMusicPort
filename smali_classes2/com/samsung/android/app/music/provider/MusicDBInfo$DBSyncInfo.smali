.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DBSyncInfo"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1155
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->b:Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;

    const-string v0, "content://com.sec.android.app.music/db_info/sync"

    .line 1158
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->a:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
