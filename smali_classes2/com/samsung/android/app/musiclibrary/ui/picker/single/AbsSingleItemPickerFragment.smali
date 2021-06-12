.class public abstract Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

.field private c:J

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 37
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    .line 39
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$autoRecommendationOnListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$autoRecommendationOnListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .line 54
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    return-wide v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;I)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    return-object p0
.end method

.method private final e(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const-string p1, "6021"

    goto :goto_0

    :sswitch_1
    const-string p1, "6030"

    goto :goto_0

    :sswitch_2
    const-string p1, "6027"

    goto :goto_0

    :sswitch_3
    const-string p1, "6024"

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x100002 -> :sswitch_3
        0x100003 -> :sswitch_2
        0x100007 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method private final m()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->i()V

    .line 213
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->j()V

    .line 214
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    :cond_0
    return-void
.end method

.method private final n()V
    .locals 3

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final o()V
    .locals 2

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public A_()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->A_()V

    return-void
.end method

.method public a(JZ)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->a(JZ)V

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_4

    const-string v0, "args_audio_id"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getItemCount()I

    move-result v2

    const-string v3, "UiList"

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " onLoadFinished() | audioId is preset | audioId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->e(I)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_2

    const-string v2, "UiList"

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " onLoadFinished() | find matched audioId. position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    .line 171
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->scrollToPosition(I)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 172
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IZZILjava/lang/Object;)V

    .line 174
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    .line 175
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->g()Z

    move-result v3

    .line 175
    invoke-interface {v2, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->a(JZ)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->d()V

    goto :goto_1

    .line 176
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.picker.single.AutoRecommendationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "args_audio_id"

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 189
    :cond_4
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    int-to-long p1, p2

    cmp-long v0, v0, p1

    if-eqz v0, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c()V

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->m()V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(J)V

    .line 199
    :cond_6
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_7

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(J)V

    :cond_7
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->a(Z)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.picker.single.AutoRecommendationManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(JZ)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->b(JZ)V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 205
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->I()V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->d()V

    return-void
.end method

.method public c(JZ)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->c(JZ)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->i()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->j()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->k()V

    return-void
.end method

.method public l()Landroid/content/Intent;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->l()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "previewable!!.recommendationResult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$menu;->single_item_picker:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 149
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->j()V

    .line 122
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->A_()V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->i(I)V

    .line 111
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPause()V

    return-void

    .line 107
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.picker.single.AutoRecommendationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    return-void

    .line 102
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.picker.single.AutoRecommendationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saved_key_selected_id"

    .line 66
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->n()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->k()V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->o()V

    .line 117
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_2

    const-string p1, "saved_key_selected_id"

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 78
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    .line 79
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 81
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c:J

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->g()Z

    move-result p2

    .line 80
    invoke-interface {p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->c(JZ)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.picker.single.AutoRecommendationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 88
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b_(I)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    const/16 v0, 0xf

    .line 91
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 90
    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setUserVisibleHint(Z)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->d()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a()V

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->i()V

    :goto_0
    return-void
.end method
