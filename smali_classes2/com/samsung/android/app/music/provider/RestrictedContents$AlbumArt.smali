.class public final Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/RestrictedContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArt"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    new-instance v0, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a:Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(J)Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.sec.android.app.music.restricted/audio/albumart"

    .line 332
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "ContentUris.withAppended\u2026bumart\".toUri(), albumId)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
