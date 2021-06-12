.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusHelper"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field final synthetic d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 930
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->a:Z

    .line 931
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b:Z

    .line 932
    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 972
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->f:Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->f:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 982
    iput v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->c:I

    return v1

    .line 986
    :cond_2
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->a:Z

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public b()Z
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->f:Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1004
    :cond_1
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->a:Z

    .line 1005
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->p:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->c:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 940
    :cond_0
    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 944
    :pswitch_1
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->a:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b:Z

    if-eqz p1, :cond_2

    .line 945
    :cond_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d()V

    const/4 p1, 0x0

    .line 946
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->a:Z

    .line 947
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b:Z

    goto :goto_0

    .line 951
    :pswitch_2
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 952
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b:Z

    .line 953
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e()V

    goto :goto_0

    .line 958
    :pswitch_3
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 959
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->b:Z

    .line 960
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->d:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
