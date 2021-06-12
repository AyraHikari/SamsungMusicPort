.class public final Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContentsExtra;,
        Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;,
        Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;,
        Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;
    }
.end annotation


# static fields
.field public static final DLNA_ALL_DELETE_URI:Landroid/net/Uri;

.field public static final DLNA_ALL_TABLE_NAME:Ljava/lang/String; = "dlna_all_table"

.field public static final EXTENSION:Ljava/lang/String; = "extension"

.field public static final PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "provider_name"

.field public static final SEED:Ljava/lang/String; = "seed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;->getDlnaAllUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;->DLNA_ALL_DELETE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDlnaAllUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/dlna_all_table"

    .line 38
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
