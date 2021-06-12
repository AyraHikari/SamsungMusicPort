.class Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 64
    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    const-string v0, "android.widget."

    const-string v1, "android.view."

    const-string v2, "android.webkit."

    .line 66
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 3

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 193
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    sget-object v1, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v1, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v1, p1, v0}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 210
    sget-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1

    .line 215
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/view/View;

    .line 216
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 218
    sget-object p3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 219
    sget-object p1, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 222
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4

    const-string v0, "view"

    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p2, "class"

    .line 155
    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 159
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 160
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p3, v3, v0

    const/4 p3, -0x1

    const/16 v3, 0x2e

    .line 162
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne p3, v3, :cond_3

    const/4 p3, 0x0

    .line 163
    :goto_0
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v3, v3

    if-ge p3, v3, :cond_2

    .line 164
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 179
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 180
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object v3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 179
    :cond_2
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 180
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object v1

    .line 171
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    iget-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 180
    iget-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p2, v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 179
    iget-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 180
    iget-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p2, v0

    .line 181
    throw p1

    .line 179
    :catch_0
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 180
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object v1
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 2

    .line 235
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->View:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 239
    sget p2, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 243
    sget p2, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    const-string p3, "AppCompatViewInflater"

    const-string v0, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 246
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_3

    .line 252
    instance-of p1, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Landroid/support/v7/view/ContextThemeWrapper;

    .line 253
    invoke-virtual {p1}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 256
    :cond_2
    new-instance p1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {p1, p0, p2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, p1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 0
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    if-nez p6, :cond_1

    if-eqz p7, :cond_2

    .line 91
    :cond_1
    invoke-static {p1, p4, p6, p7}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p1

    :cond_2
    if-eqz p8, :cond_3

    .line 94
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_3
    const/4 p5, 0x0

    const/4 p6, -0x1

    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p7

    sparse-switch p7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p7, "Button"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string p7, "EditText"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string p7, "CheckBox"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x6

    goto :goto_1

    :sswitch_3
    const-string p7, "AutoCompleteTextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/16 p6, 0x9

    goto :goto_1

    :sswitch_4
    const-string p7, "ImageView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x1

    goto :goto_1

    :sswitch_5
    const-string p7, "RadioButton"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x7

    goto :goto_1

    :sswitch_6
    const-string p7, "Spinner"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x4

    goto :goto_1

    :sswitch_7
    const-string p7, "ImageButton"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x5

    goto :goto_1

    :sswitch_8
    const-string p7, "TextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/4 p6, 0x0

    goto :goto_1

    :sswitch_9
    const-string p7, "MultiAutoCompleteTextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/16 p6, 0xa

    goto :goto_1

    :sswitch_a
    const-string p7, "CheckedTextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/16 p6, 0x8

    goto :goto_1

    :sswitch_b
    const-string p7, "RatingBar"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    const/16 p6, 0xb

    :cond_4
    :goto_1
    packed-switch p6, :pswitch_data_0

    goto :goto_2

    .line 135
    :pswitch_0
    new-instance p5, Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 132
    :pswitch_1
    new-instance p5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 129
    :pswitch_2
    new-instance p5, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 126
    :pswitch_3
    new-instance p5, Landroid/support/v7/widget/AppCompatCheckedTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 123
    :pswitch_4
    new-instance p5, Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 120
    :pswitch_5
    new-instance p5, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 117
    :pswitch_6
    new-instance p5, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 114
    :pswitch_7
    new-instance p5, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 111
    :pswitch_8
    new-instance p5, Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 108
    :pswitch_9
    new-instance p5, Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 105
    :pswitch_a
    new-instance p5, Landroid/support/v7/widget/AppCompatImageView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 102
    :pswitch_b
    new-instance p5, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_2
    if-nez p5, :cond_5

    if-eq p3, p1, :cond_5

    .line 142
    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p5

    :cond_5
    if-eqz p5, :cond_6

    .line 147
    invoke-direct {p0, p5, p4}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    :cond_6
    return-object p5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_a
        -0x503aa7ad -> :sswitch_9
        -0x37f7066e -> :sswitch_8
        -0x37e04bb3 -> :sswitch_7
        -0x1440b607 -> :sswitch_6
        0x2e46a6ed -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
