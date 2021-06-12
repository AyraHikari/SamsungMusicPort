.class public Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;
.super Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaStore$MediaServer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Server"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "provider_name"

.field public static final DLNA_DMS_TABLE_NAME:Ljava/lang/String; = "dlna_dms_table"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaStore$MediaServer;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/dlna_dms_table"

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
