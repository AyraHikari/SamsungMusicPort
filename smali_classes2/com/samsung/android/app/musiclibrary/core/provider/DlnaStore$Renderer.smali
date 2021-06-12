.class public Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;
.super Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaStore$MediaRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Renderer"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DLNA_DMR_TABLE_NAME:Ljava/lang/String; = "dlna_dmr_table"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaStore$MediaRenderer;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/dlna_dmr_table"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
