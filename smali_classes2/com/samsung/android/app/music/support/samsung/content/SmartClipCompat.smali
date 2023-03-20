.class public Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat;
.super Ljava/lang/Object;
.source "SmartClipCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDataExtractionListener(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat$1;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;->setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat;->setDataExtractionListener(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
