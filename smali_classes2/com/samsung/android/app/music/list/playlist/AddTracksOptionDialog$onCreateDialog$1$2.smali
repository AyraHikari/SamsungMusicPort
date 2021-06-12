.class final Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;->INSTANCE:Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
