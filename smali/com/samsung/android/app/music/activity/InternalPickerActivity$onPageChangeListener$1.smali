.class public final Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/InternalPickerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;I)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b(Lcom/samsung/android/app/music/activity/InternalPickerActivity;I)V

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const-string p1, "select_tracks_track"

    goto :goto_0

    :sswitch_1
    const-string p1, "select_tracks_folder"

    goto :goto_0

    :sswitch_2
    const-string p1, "select_tracks_artist"

    goto :goto_0

    :sswitch_3
    const-string p1, "select_tracks_album"

    :goto_0
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_3
        0x10003 -> :sswitch_2
        0x10007 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method
