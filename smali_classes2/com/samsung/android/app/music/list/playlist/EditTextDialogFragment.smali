.class public abstract Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;
.super Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;

.field public static final ERROR_ALREADY_IN_USED:I = 0x4

.field public static final ERROR_INVALID_CHARACTER:I = 0x2

.field public static final ERROR_MAX_LENGTH:I = 0x1

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_UNKNOWN:I = 0x5

.field private static final IME_OPTION_DISABLE_SYMBOL_OFF:Ljava/lang/String; = "inputType=filename"

.field private static final IME_OPTION_EMOTICON_OFF:Ljava/lang/String; = "disableEmoticonInput=true"

.field private static final IME_OPTION_GIF_OFF:Ljava/lang/String; = "disableGifKeyboard=true"

.field private static final IME_OPTION_LIVE_MSG_OFF:Ljava/lang/String; = "disableLiveMessage=true"

.field private static final IME_OPTION_PREDICTION_OFF:Ljava/lang/String; = "inputType=PredictionOff"

.field private static final IME_OPTION_STICKER_OFF:Ljava/lang/String; = "disableSticker=true"

.field private static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "key_error_message"

.field private static final KEY_ID_ERROR_MESSAGE:Ljava/lang/String; = "key_id_error_message"

.field private static final KEY_KEYBOARD_VISIBLE:Ljava/lang/String; = "key_keyboard_visible"

.field private static final MAX_LENGTH_OF_PLAYLIST_NAME:I = 0x32

.field private static final PATTERN_SPECIAL_CHARACTERS:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dialogDescriptionResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private dialogTitleResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private editTextView:Landroid/widget/EditText;

.field public initPlaylistName:Ljava/lang/String;

.field private isKeyboardVisible:Z

.field private keyboardIntentFilter:Landroid/content/IntentFilter;

.field private final keyboardReceiver:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;

.field private lastErrorCode:I

.field private lastErrorMessage:Ljava/lang/CharSequence;

.field private negativeButtonResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private positiveButtonResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private receiveTime:J

.field private recreatedErrorCode:I

.field private final showSIP:Ljava/lang/Runnable;

.field private textInputLayout:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;

    .line 428
    const-class v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    sput-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "[*/\\\\?:<>|\"]+"

    .line 457
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->PATTERN_SPECIAL_CHARACTERS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isKeyboardVisible:Z

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ResponseAxT9Info"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->keyboardIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogTitleResId:I

    .line 65
    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogDescriptionResId:I

    .line 68
    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->positiveButtonResId:I

    const v1, 0x7f0b00cd

    .line 71
    iput v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->negativeButtonResId:I

    .line 73
    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->lastErrorCode:I

    .line 75
    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->recreatedErrorCode:I

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->keyboardReceiver:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$showSIP$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$showSIP$1;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->showSIP:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onSharedPreferenceChangeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onSharedPreferenceChangeListener$1;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static final synthetic access$getEditTextView$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getLastErrorMessage$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Ljava/lang/CharSequence;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->lastErrorMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic access$getPATTERN_SPECIAL_CHARACTERS$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->PATTERN_SPECIAL_CHARACTERS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getReceiveTime$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->receiveTime:J

    return-wide v0
.end method

.method public static final synthetic access$getRecreatedErrorCode$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->recreatedErrorCode:I

    return p0
.end method

.method public static final synthetic access$getShowSIP$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->showSIP:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTextInputLayout$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method public static final synthetic access$isKeyboardVisible$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isKeyboardVisible:Z

    return p0
.end method

.method public static final synthetic access$setEditTextView$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$setKeyboardVisible$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isKeyboardVisible:Z

    return-void
.end method

.method public static final synthetic access$setLastErrorMessage$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->lastErrorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public static final synthetic access$setReceiveTime$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->receiveTime:J

    return-void
.end method

.method public static final synthetic access$setRecreatedErrorCode$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->recreatedErrorCode:I

    return-void
.end method

.method public static final synthetic access$setTextInputLayout$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-void
.end method

.method public static final synthetic access$updatePositiveButton(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->updatePositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public static final getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;

    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final initDescriptionText(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f13025d

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    .line 376
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogDescriptionResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 377
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogDescriptionResId:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 376
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 375
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final initEditText(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    const v0, 0x7f1301ca

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    const v0, 0x7f13025e

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/EditText;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initPlaylistName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "initPlaylistName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 281
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 285
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-string v1, "inputType=PredictionOff;disableEmoticonInput=true;inputType=filename;disableGifKeyboard=true;disableSticker=true;disableLiveMessage=true"

    .line 292
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$1;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$1;-><init>(Landroid/widget/EditText;Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;

    const/16 v3, 0x32

    invoke-direct {v1, v3, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;-><init>(ILcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v1, Landroid/text/InputFilter;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 359
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$3;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$3;-><init>(Landroid/widget/EditText;Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    return-void

    .line 285
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.design.widget.TextInputLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final updatePositiveButton(Ljava/lang/String;)V
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/app/AlertDialog;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 404
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isValidPlaylistName(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final getDialogDescriptionResId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogDescriptionResId:I

    return v0
.end method

.method protected final getDialogTitleResId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogTitleResId:I

    return v0
.end method

.method protected final getEditPlaylistName()Ljava/lang/String;
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    check-cast v0, Ljava/lang/CharSequence;

    .line 463
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v1, v4, :cond_6

    if-nez v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    .line 468
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v4, v2

    .line 483
    invoke-interface {v0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " editPlaylistName() msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInitPlaylistName()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initPlaylistName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "initPlaylistName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getLastErrorCode()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->lastErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 8

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    check-cast v0, Ljava/lang/CharSequence;

    .line 486
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v1, v4, :cond_7

    if-nez v5, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v4

    .line 491
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_5

    if-nez v6, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    add-int/2addr v4, v2

    .line 506
    invoke-interface {v0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method protected final getNegativeButtonResId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->negativeButtonResId:I

    return v0
.end method

.method protected final getPositiveButtonResId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->positiveButtonResId:I

    return v0
.end method

.method public final getTextInputLayout()Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method public isInvalidMessage()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isValidPlaylistName(Ljava/lang/String;)Z
    .locals 6

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const v2, 0x7f0b02f9

    const/4 v3, 0x1

    .line 412
    new-array v4, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.playl\u2026ts, playlistName?.trim())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    .line 415
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    .line 416
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    .line 415
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    return v5
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onAttach(Landroid/app/Activity;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 129
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreateDialog() savedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "key_id_error_message"

    const/4 v1, -0x1

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->recreatedErrorCode:I

    const-string v0, "key_keyboard_visible"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isKeyboardVisible:Z

    const-string v0, "key_error_message"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->lastErrorMessage:Ljava/lang/CharSequence;

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f04007d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 137
    instance-of v0, p1, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v2, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;->setOnWindowFocusChangeListener(Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;)V

    .line 146
    :cond_2
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 148
    iget v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogTitleResId:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 149
    iget v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->positiveButtonResId:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 150
    iget v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->negativeButtonResId:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const-string v1, "rootView"

    .line 153
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initEditText(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initDescriptionText(Landroid/view/View;)V

    const-string p1, "dialog"

    .line 155
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 265
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 270
    invoke-super {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onDetach()V

    return-void
.end method

.method protected onEditCanceled()V
    .locals 0

    return-void
.end method

.method protected onEditCompleted(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 255
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->receiveTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x96

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isKeyboardVisible:Z

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->keyboardReceiver:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-super {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 170
    invoke-super {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onResume()V

    .line 171
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->keyboardReceiver:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->keyboardIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 178
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 184
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isKeyboardVisible:Z

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->showSIP:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v0, v2

    :cond_3
    check-cast v0, Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_4

    .line 191
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " null is returned by getDialog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dismiss()V

    return-void

    :cond_4
    const/4 v1, -0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, -0x2

    .line 224
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$3;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Landroid/support/v7/app/AlertDialog;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->updatePositiveButton(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->recreatedErrorCode:I

    if-eq v0, v1, :cond_8

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "key_error_message"

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "key_id_error_message"

    .line 111
    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->lastErrorCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "key_keyboard_visible"

    .line 113
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isKeyboardVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/samsung/android/app/music/list/playlist/ProgressDialogFragment;->onStart()V

    .line 163
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected final setDialogDescriptionResId(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogDescriptionResId:I

    return-void
.end method

.method protected final setDialogTitleResId(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dialogTitleResId:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    .line 395
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setInitPlaylistName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initPlaylistName:Ljava/lang/String;

    return-void
.end method

.method protected final setLastErrorCode(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->lastErrorCode:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected final setNegativeButtonResId(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->negativeButtonResId:I

    return-void
.end method

.method protected final setPositiveButtonResId(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->positiveButtonResId:I

    return-void
.end method
