.class Lcom/samsung/android/app/music/activity/MetaEditActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "MetaEditor"

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "spinner item selected position : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "None"

    .line 198
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    iget-object p3, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p3}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->i(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Ljava/lang/String;)V

    .line 203
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    .line 204
    invoke-static {p4}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 203
    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    .line 207
    invoke-virtual {p3}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getScreenId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "4163"

    .line 208
    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 207
    invoke-virtual {p2, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b(Lcom/samsung/android/app/music/activity/MetaEditActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
