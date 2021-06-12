.class public Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;
.super Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaStore$MediaServerContents;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerContents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field public static final DLNA_DMS_CONTENTS_TABLE_NAME:Ljava/lang/String; = "dlna_dms_contents_table"

.field public static final SS_PREFIX:Ljava/lang/String; = "ss"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    .line 97
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v0, :cond_0

    const-string v0, "title_pinyin"

    goto :goto_0

    :cond_0
    const-string v0, "title"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaStore$MediaServerContents;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/dlna_dms_contents_table"

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
