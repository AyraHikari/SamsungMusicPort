.class public final Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$Companion;
    }
.end annotation


# static fields
.field private static final BOTTOM_OF_PLAYLIST:I = 0x1

.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$Companion;

.field public static final KEY_ADD_TRACKS_TO_TOP_OF_PLAYLIST:Ljava/lang/String; = "key_add_tracks_to_top_of_playlist"

.field private static final TOP_OF_PLAYLIST:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;->Companion:Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 18
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "builder.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0b03aa

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026g_option_top_of_playlist)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0b03a8

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "context.getString(R.stri\u2026ption_bottom_of_playlist)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_add_tracks_to_top_of_playlist"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    const v3, 0x7f0b03a9

    .line 31
    invoke-virtual {p1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 32
    new-instance v3, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;-><init>([Ljava/lang/CharSequence;ILandroid/content/Context;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0b00cd

    .line 52
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;->INSTANCE:Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 55
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v0, "builder.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
