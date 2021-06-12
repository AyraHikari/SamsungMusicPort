.class public abstract Landroid/support/v7/preference/PreferenceFragmentCompat;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/preference/DialogPreference$TargetFragment;
.implements Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;,
        Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;,
        Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;,
        Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;,
        Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.preference.PreferenceFragment.DIALOG"

.field private static final INTENT_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.samsung.settings.FONT_SIZE_CHANGED"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field public static final SESL_ROUNDED_CORNER_TYPE_NONE:I = 0x0

.field public static final SESL_ROUNDED_CORNER_TYPE_SOLID:I = 0x1

.field public static final SESL_ROUNDED_CORNER_TYPE_STROKE:I = 0x2

.field static final TAG:Ljava/lang/String; = "SeslPreferenceFragmentC"


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final mDividerDecoration:Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/support/v7/widget/RecyclerView;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mRoundedCornerType:I

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

.field private mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

.field private mSeslStrokeListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

.field private mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

.field private mStyledContext:Landroid/content/Context;

.field private mSubheaderColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x2

    .line 182
    iput v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRoundedCornerType:I

    .line 186
    sget v0, Landroid/support/v7/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 188
    new-instance v0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;-><init>(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/PreferenceFragmentCompat$1;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    .line 191
    new-instance v0, Landroid/support/v7/preference/PreferenceFragmentCompat$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$1;-><init>(Landroid/support/v7/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Landroid/support/v7/preference/PreferenceFragmentCompat$2;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$2;-><init>(Landroid/support/v7/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->bindPreferences()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 128
    iget-object p0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v7/preference/PreferenceFragmentCompat;)I
    .locals 0

    .line 128
    iget p0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRoundedCornerType:I

    return p0
.end method

.method static synthetic access$400(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;
    .locals 0

    .line 128
    iget-object p0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslRoundedCorner;
    .locals 0

    .line 128
    iget-object p0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslRoundedCorner;
    .locals 0

    .line 128
    iget-object p0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslStrokeListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslRoundedCorner;
    .locals 0

    .line 128
    iget-object p0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    return-object p0
.end method

.method private bindPreferences()V
    .locals 3

    .line 635
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 638
    iget v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRoundedCornerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 639
    iget v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->seslSetSubheaderColor(I)V

    .line 640
    iput-boolean v2, v0, Landroid/support/v7/preference/PreferenceScreen;->mIsSolidRoundedCorner:Z

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 644
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onAttached()V

    .line 646
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onBindPreferences()V

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 630
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 624
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    return-void

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 1

    .line 779
    new-instance v0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/preference/PreferenceFragmentCompat$3;-><init>(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 810
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_0

    .line 811
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 813
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 1

    .line 650
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onDetached()V

    .line 654
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .line 530
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 532
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    .line 533
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 532
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 617
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public getCallbackFragment()Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 668
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    .line 520
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 440
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preferences"

    .line 443
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 260
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 261
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 263
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    .line 267
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const-string v0, "SeslPreferenceFragmentC"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-sesl_preference_version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "10.0.37"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    .line 274
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must specify preferenceTheme in theme"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .line 713
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 703
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 686
    sget p3, Landroid/support/v7/preference/R$layout;->sesl_preference_recyclerview:I

    const/4 v0, 0x0

    .line 687
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 689
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 690
    new-instance p2, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p2, p1}, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 301
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/preference/R$styleable;->PreferenceFragmentCompat:[I

    sget v2, Landroid/support/v7/preference/R$attr;->preferenceFragmentCompatStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 306
    sget v1, Landroid/support/v7/preference/R$styleable;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 309
    sget v1, Landroid/support/v7/preference/R$styleable;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 311
    sget v2, Landroid/support/v7/preference/R$styleable;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 313
    sget v6, Landroid/support/v7/preference/R$styleable;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 316
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    iget-object v8, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    sget-object v9, Landroid/support/v7/preference/R$styleable;->View:[I

    const v10, 0x1010208

    invoke-virtual {v8, v3, v9, v10, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 322
    sget v9, Landroid/support/v7/preference/R$styleable;->View_android_background:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 323
    instance-of v10, v9, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_0

    .line 324
    check-cast v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v9

    iput v9, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    :cond_0
    const-string v9, "SeslPreferenceFragmentC"

    .line 327
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " sub header color = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 333
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget v10, Landroid/support/v7/preference/R$attr;->preferenceTheme:I

    invoke-virtual {v9, v10, v8, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 334
    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    .line 336
    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 337
    invoke-virtual {p1, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 339
    iget v8, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {p1, v8, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v8, 0x102003f

    .line 341
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 342
    instance-of v10, v8, Landroid/view/ViewGroup;

    if-eqz v10, :cond_6

    .line 347
    check-cast v8, Landroid/view/ViewGroup;

    .line 349
    invoke-virtual {p0, p1, v8, p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 355
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 357
    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 358
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v5, :cond_1

    .line 360
    invoke-virtual {p0, v2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    .line 362
    :cond_1
    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {p3, v6}, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 365
    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 367
    iget p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRoundedCornerType:I

    const/16 v1, 0xf

    if-ne p3, v7, :cond_2

    .line 368
    new-instance p3, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, v4}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    .line 369
    new-instance p3, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-direct {p3, v9, v4}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    .line 370
    sget p3, Landroid/support/v7/preference/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    .line 372
    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    iget v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {p3, v1, v0}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCornerColor(II)V

    .line 373
    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    iget v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {p3, v1, v0}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 375
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->seslSetOutlineStrokeEnabled(Z)V

    goto :goto_0

    .line 376
    :cond_2
    iget p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRoundedCornerType:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 377
    new-instance p3, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-direct {p3, v9}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    .line 378
    new-instance p3, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-direct {p3, v9}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    .line 381
    :cond_3
    :goto_0
    iget p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRoundedCornerType:I

    if-eqz p3, :cond_4

    .line 382
    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 383
    iget p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomColor(I)V

    .line 384
    new-instance p1, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-direct {p1, v9, v4, v7}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    .line 385
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    iget p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSubheaderColor:I

    invoke-virtual {p1, v1, p3}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 386
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 388
    new-instance p1, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-direct {p1, v9}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslStrokeListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    .line 389
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSeslStrokeListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    invoke-virtual {p1, p3}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 393
    :cond_4
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 394
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 352
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 469
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->unbindPreferences()V

    :cond_0
    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 475
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 727
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 729
    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 731
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 732
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 733
    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 741
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 746
    :cond_3
    instance-of v0, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 747
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroid/support/v7/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 748
    :cond_4
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 749
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 750
    :cond_5
    instance-of v0, p1, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 751
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    .line 756
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 757
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 753
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 598
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 600
    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 602
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 604
    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 570
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 574
    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 576
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 578
    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 480
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 482
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 485
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 486
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 455
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 456
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 457
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 462
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 463
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 464
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 425
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 427
    iget-boolean p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz p1, :cond_0

    .line 428
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 429
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 431
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 p1, 0x1

    .line 435
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mInitDone:Z

    return-void
.end method

.method public scrollToPreference(Landroid/support/v7/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 775
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 771
    invoke-direct {p0, v0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public seslSetRoundedCornerType(I)V
    .locals 0

    .line 823
    iput p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mRoundedCornerType:I

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 420
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->setDividerHeight(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 504
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->setPreferences(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 505
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    const/4 p1, 0x1

    .line 506
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 507
    iget-boolean p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz p1, :cond_0

    .line 508
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->postBindPreferences()V

    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 546
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 548
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 553
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 554
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference object with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a PreferenceScreen"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :cond_1
    :goto_0
    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method
