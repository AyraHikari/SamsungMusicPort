.class Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$1;->a:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f130408

    if-eq p1, v0, :cond_1

    const v0, 0x7f13040a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$1;->a:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;

    sget-object v0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$1;->a:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;

    sget-object v0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    :goto_0
    return-void
.end method
