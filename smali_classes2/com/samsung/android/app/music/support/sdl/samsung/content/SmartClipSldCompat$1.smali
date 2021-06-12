.class final Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat;->setDataExtractionListener(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat$1;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 1

    .line 24
    invoke-interface {p3, p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->intersects(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    .line 28
    new-instance p1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string p3, "title"

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat$1;->val$title:Ljava/lang/String;

    invoke-direct {p1, p3, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 30
    new-instance p1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string p3, "file_path_audio"

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p1, p3, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 p1, 0x100

    return p1
.end method
