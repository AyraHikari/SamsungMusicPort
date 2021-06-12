.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreList"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1122
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->b:Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;

    const-string v0, "content://com.sec.android.app.music/db_info/restore"

    .line 1125
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->a:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
