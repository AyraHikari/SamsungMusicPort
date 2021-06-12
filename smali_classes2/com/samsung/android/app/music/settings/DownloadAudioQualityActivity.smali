.class public Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$1;-><init>(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()I
    .locals 4

    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "milk_download_quality"

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "DownloadAudioQualityActivity"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAudioQuality - Load : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 237
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 238
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 239
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 240
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 241
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b0107

    .line 242
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 243
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 6

    const v0, 0x7f1303a2

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1303a3

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 121
    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100fb

    aput v4, v2, v3

    const/4 v4, 0x0

    const v5, 0x1010074

    .line 122
    invoke-virtual {p0, v4, v2, v5, v3}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 125
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    sget-object v2, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$2;->a:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0b04b4

    .line 134
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0b0097

    .line 135
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0b04b5

    .line 130
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0b0095

    .line 131
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 3

    const-string v0, "DownloadAudioQualityActivity"

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectOptionItem - Quality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadAudioQualityActivity"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectOptionItem - Save : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "milk_download_quality"

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->d(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->c(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    .line 184
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "milk_download_quality"

    const/4 v2, 0x1

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private b()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(I)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 3

    const v0, 0x7f130408

    .line 166
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1303a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v2, 0x7f13040a

    .line 168
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 173
    sget-object v2, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$2;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 191
    sget-object v1, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$2;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v1, "423"

    const-string v2, "5261"

    .line 201
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "settings_downloadingAudioQuality"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 2

    .line 210
    sget-object v0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;

    if-ne p1, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.samsung.radio.settings.DOWNLOAD_AUDIO_QUALITY_NEXT_HIGHEST_AVAILABLE_IS_DISPLAYED"

    const/4 v1, 0x0

    .line 212
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b03bf

    .line 216
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b(I)V

    const-string v0, "com.samsung.radio.settings.DOWNLOAD_AUDIO_QUALITY_NEXT_HIGHEST_AVAILABLE_IS_DISPLAYED"

    const/4 v1, 0x1

    .line 217
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040121

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a(Landroid/app/Activity;)V

    const v0, 0x7f13038b

    .line 90
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b:Landroid/view/ViewGroup;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const/16 v1, 0xf

    const v2, 0x7f0f003a

    .line 93
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    :cond_0
    const v0, 0x7f130408

    .line 96
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    const v0, 0x7f13040a

    .line 97
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    const v0, 0x7f13040c

    .line 98
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f13040b

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    if-nez p1, :cond_1

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "423"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string p1, "DownloadAudioQualityActivity"

    const-string v0, "onRestoreInstanceState"

    .line 112
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity$QualityType;)V

    return-void
.end method
