.class Lcom/samsung/android/app/music/activity/MetaEditActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;


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

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_uri_string"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a()Landroid/util/LruCache;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    const-string v0, "Current file doesn\'t support edit."

    const v1, 0x7f0b0148

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Ljava/lang/String;I)V

    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    const-string v0, "IO Error."

    const v1, 0x7f0b012f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Ljava/lang/String;I)V

    return-void

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    const-string p1, "MetaEditor"

    const-string v0, "Non-tagged file."

    .line 113
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditConstants;->a:Ljava/util/List;

    .line 119
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "UTF-8"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p1

    .line 123
    invoke-static {}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b()Ljava/util/List;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "UTF-16"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p1

    .line 128
    invoke-static {}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b()Ljava/util/List;

    move-result-object v0

    const-string v3, "UTF-16"

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b()Ljava/util/List;

    move-result-object v0

    const-string v3, "None"

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 137
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method
