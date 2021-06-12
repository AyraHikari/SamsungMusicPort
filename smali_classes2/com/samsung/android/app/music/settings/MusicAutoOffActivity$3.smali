.class Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/SeslTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/support/v7/widget/SeslTimePicker;II)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    const v0, 0x36ee80

    mul-int v0, v0, p2

    const v1, 0xea60

    mul-int v1, v1, p3

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;I)V

    const/4 p1, 0x1

    if-gtz p2, :cond_1

    if-lez p3, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(IZ)V

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(IZ)V

    .line 175
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;I)I

    .line 176
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;I)I

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->onBackPressed()V

    return-void
.end method
