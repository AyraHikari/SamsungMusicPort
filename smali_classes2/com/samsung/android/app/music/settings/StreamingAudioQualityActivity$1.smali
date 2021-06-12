.class Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$1;->a:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f130408

    if-eq p1, v1, :cond_3

    const v1, 0x7f13040a

    if-eq p1, v1, :cond_2

    const v1, 0x7f13040c

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$1;->a:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$1;->a:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$1;->a:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    :goto_0
    return-void
.end method
