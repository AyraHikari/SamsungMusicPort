.class public Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;,
        Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;-><init>(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;

    invoke-direct {v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;-><init>()V

    .line 146
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;->a(I)I

    move-result v1

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;

    invoke-direct {v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;-><init>()V

    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "enqueue_option"

    const/4 v4, 0x1

    .line 149
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 148
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;->a(I)I

    move-result v1

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;I)V

    .line 150
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 209
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 210
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 211
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 212
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 213
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b00f2

    .line 214
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    const v0, 0x7f130408

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1303a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v2, 0x7f13040a

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v3, 0x7f13040c

    .line 159
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 162
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 163
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;)V
    .locals 2

    const v0, 0x7f130408

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;I)V

    const v0, 0x7f13040a

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;I)V

    .line 118
    instance-of v0, p2, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;

    const v1, 0x7f13040c

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f13040b

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;I)V
    .locals 5

    const v0, 0x7f1303a2

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1303a3

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 131
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100fb

    aput v3, v1, v2

    const/4 v3, 0x0

    const v4, 0x1010074

    .line 132
    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 135
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->c(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 1

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f1303a1

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f1303a2

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->f:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Landroid/view/View;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    const v1, 0x7f130408

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Z)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    const v1, 0x7f13040a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Z)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    const v1, 0x7f13040c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040054

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->setContentView(I)V

    .line 85
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/app/Activity;)V

    const p1, 0x7f1301f3

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    const p1, 0x7f1301f6

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    const p1, 0x7f1301f4

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->c:Landroid/view/View;

    const p1, 0x7f1301f2

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Landroid/view/ViewGroup;

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Landroid/view/ViewGroup;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const v0, 0x7f0f003a

    const/16 v1, 0xf

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->d:Landroid/view/ViewGroup;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    .line 94
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 93
    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    :cond_0
    const p1, 0x7f1301f5

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->e:Landroid/view/ViewGroup;

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->e:Landroid/view/ViewGroup;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->e:Landroid/view/ViewGroup;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    .line 99
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;)V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a()V

    return-void
.end method
