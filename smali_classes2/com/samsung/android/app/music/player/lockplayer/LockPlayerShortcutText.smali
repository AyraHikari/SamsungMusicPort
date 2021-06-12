.class public final Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f130330

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;->a:Landroid/view/View;

    const v0, 0x7f13033f

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;->b:Landroid/widget/TextView;

    .line 20
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->z_:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;->b:Landroid/widget/TextView;

    const v1, 0x7f0b04b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;->b:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
