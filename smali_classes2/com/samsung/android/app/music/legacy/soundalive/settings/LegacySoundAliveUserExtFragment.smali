.class public Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;
.super Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LegacySoundAliveUserExtFragment"

.field private static final b:[Z

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

.field private f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    .line 30
    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->b:[Z

    .line 33
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->c:[I

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->d:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7f1302f5
        0x7f1302f6
        0x7f1302f7
        0x7f1302f8
        0x7f1302f9
    .end array-data

    :array_2
    .array-data 4
        0x7f0b04df
        0x7f0b04e0
        0x7f0b04e1
        0x7f0b04e2
        0x7f0b04e3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;-><init>()V

    const/4 v0, 0x5

    .line 42
    new-array v0, v0, [Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object p1, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setMax(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f0b017e

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object p1, p1, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object p1, p1, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setMax(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0400cc

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x5

    .line 82
    new-array v1, v0, [Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->b()[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 86
    sget-object v5, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->c:[I

    aget v5, v5, v4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v4

    .line 87
    aget-object v5, v1, v4

    const v6, 0x7f1302f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 88
    sget-object v6, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->d:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v5, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v6, v1, v4

    const v7, 0x7f1302f1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aput-object v6, v5, v4

    .line 91
    iget-object v5, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v5, v5, v4

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setMax(I)V

    .line 92
    iget-object v5, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v5, v5, v4

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 93
    iget-object v5, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v5, v5, v4

    new-instance v6, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->b(Landroid/view/View;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object p1, p1, v3

    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public b()[I
    .locals 6

    const/4 v0, 0x5

    .line 111
    new-array v1, v0, [I

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "music_service_pref"

    const/4 v4, 0x4

    .line 113
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "user_ext"

    const-string v4, "0|0|0|0|0|"

    .line 116
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 120
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 124
    :cond_0
    aput v2, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public c()V
    .locals 5

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->e:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 134
    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    .line 143
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAudioPathChanged earjack using : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a(Z)V

    .line 64
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserVisibleHint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
